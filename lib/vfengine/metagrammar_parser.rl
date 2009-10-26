# (c) 2008 Phil Hofmann <phil@versfabrik.de>

module Vfengine

  class MetagrammarParser

    %%{

      machine metagrammar;
      # alphtype char;
      alphtype int;

      action text {
        text << data[p]
      }
      action eol {
        # eol
        pm << TextToken.new(text) unless text.empty?
        text = ''
      }
      action sep {
        pm << TextToken.new(text) unless text.empty?
        pm.new_option
        text = ''
      }
      action rsyms {
        pm << TextToken.new(text) unless text.empty?
        key = ''
      }
      action rsyme {
        pm << SymbolToken.new(key)
        text = '' 
      }
      action rkey {
        key << data[p]
      }
      action lsyms {
        key = ''
      }
      action lsyme {
        pm.new_key(key)
      }
      action lkey {
        key << data[p]
      }
    
      action error {
        error_counter += 1
        case data[p]
          when 10
          msg = "Koennte es sein dass die Zeile mit einem | endet? ... #{data[p-30...p]}"
          else
          msg = "unknown character at position #{p}: (#{data[p-1]}/#{data[p]}/#{data[p+1]})" +
              " #{data[p].chr} in: #{data[p-15...p]}(#{data[p]})#{data[p+1..p+15]}"
        end
        puts "error (#{error_counter}): #{msg}"
        fhold; fgoto error_line;
      }
    
      Auml      = 195 132;
      auml      = 195 164;
      Ouml      = 195 150;
      ouml      = 195 182;
      Uuml      = 195 156;
      uuml      = 195 188;
      szlig     = 195 159;
      eacute    = 195 169;
      Ocircon   = 195 180;
    
      acute     = 194 180;
      rpdaqm    = 194 187;
      lpdaqm    = 194 171;
      nbsp      = 194 160;
    
      umlaut  = Auml | auml | Ouml | ouml | Uuml | uuml | szlig;
      accent  = eacute | acute | Ocircon;
      quot  = rpdaqm | lpdaqm | nbsp;
    
      utf8c  = umlaut | accent | quot;
    
      text      = (alnum | utf8c | [ \t,:;.?!-/=~])+ $text $!error;
    
      ws        = [ \t];
      eol       = "\n" $eol;
      sep       = "|" $sep;
      pop       = ':=';
    
      lsyms     = '<' $lsyms;
      lsyme     = '>' $lsyme;
      lkey      = (alnum | '_')+ $lkey;
      lsym      = lsyms lkey lsyme;
    
      rsyms     = '<' $rsyms;
      rsyme     = '>' $rsyme;
      rkey      = (alnum | '_')+ $rkey;
      rsym      = rsyms rkey rsyme;
    
      option    = (rsym | text)+;
      rule      = ws* lsym ws* pop ws* <: option ws* (sep ws* <: option ws*)*;
      comment   = ws* '#' any*;
      line      = (ws* | comment | rule) eol;

      error_line := [^\n]* '\n' @{ fgoto main; }; 
      main := line+;
  
    }%%

    %% write data nofinal;

    def MetagrammarParser.parse(input)
      error_counter = 0
      key, text = nil, ''
      tk_start, p, tk = 0, 0, nil
      pe = input.size
      data = input
      pm = PoemEvaluator.new
      %% write init;
      %% write exec;
      pm << TextToken.new(text) unless text.empty?
      pm.finish
      return pm
    end

    def MetagrammarParser.evaluate(input)
      input = input.unpack('U*').pack('c*') # utf82ascii
      parse(input).evaluate
    end

    def MetagrammarParser.evaluate_quickmode(input)
      lines = input.split("\n")
      output = '<START> := ' + ('<vers><n>' * lines.size) + "\n"
      lines.each { |line| output += '<vers> := ' + line + "\n" }
      evaluate(output)
    end

  end

end


if __FILE__ == $0
  puts MetagrammarParser.parse(File.new(ARGV[0]).read) 
end

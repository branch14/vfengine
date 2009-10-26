# line 1 "lib/versfabrik/metagrammar_parser.rl"
# (c) 2008 Phil Hofmann <phil@versfabrik.de>

module Vfengine
 
class MetagrammarParser

  # line 133 "lib/versfabrik/metagrammar_parser.rl"


  
# line 16 "lib/versfabrik/metagrammar_parser.rb"
class << self
	attr_accessor :_metagrammar_actions
	private :_metagrammar_actions, :_metagrammar_actions=
end
self._metagrammar_actions = [
	0, 1, 0, 1, 1, 1, 2, 1, 
	3, 1, 4, 1, 5, 1, 6, 1, 
	7, 1, 8, 1, 9, 1, 10
]

class << self
	attr_accessor :_metagrammar_key_offsets
	private :_metagrammar_key_offsets, :_metagrammar_key_offsets=
end
self._metagrammar_key_offsets = [
	0, 0, 5, 6, 10, 18, 27, 31, 
	33, 47, 61, 69, 78, 83, 93, 100, 
	108, 111, 112, 125, 139, 146, 154, 158, 
	167, 168, 173, 177
]

class << self
	attr_accessor :_metagrammar_trans_keys
	private :_metagrammar_trans_keys, :_metagrammar_trans_keys=
end
self._metagrammar_trans_keys = [
	9, 10, 32, 35, 60, 10, 9, 10, 
	32, 60, 10, 95, 48, 57, 65, 90, 
	97, 122, 10, 62, 95, 48, 57, 65, 
	90, 97, 122, 9, 10, 32, 58, 10, 
	61, 9, 10, 32, 60, 63, 126, 194, 
	195, 33, 61, 65, 90, 97, 122, 9, 
	10, 60, 63, 124, 126, 194, 195, 32, 
	61, 65, 90, 97, 122, 10, 95, 48, 
	57, 65, 90, 97, 122, 10, 62, 95, 
	48, 57, 65, 90, 97, 122, 10, 160, 
	171, 180, 187, 10, 132, 150, 156, 159, 
	164, 169, 180, 182, 188, 95, 48, 57, 
	65, 90, 97, 122, 62, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 58, 61, 
	9, 32, 60, 63, 126, 194, 195, 33, 
	61, 65, 90, 97, 122, 9, 10, 60, 
	63, 124, 126, 194, 195, 32, 61, 65, 
	90, 97, 122, 95, 48, 57, 65, 90, 
	97, 122, 62, 95, 48, 57, 65, 90, 
	97, 122, 160, 171, 180, 187, 132, 150, 
	156, 159, 164, 169, 180, 182, 188, 10, 
	9, 10, 32, 35, 60, 9, 10, 32, 
	60, 0
]

class << self
	attr_accessor :_metagrammar_single_lengths
	private :_metagrammar_single_lengths, :_metagrammar_single_lengths=
end
self._metagrammar_single_lengths = [
	0, 5, 1, 4, 2, 3, 4, 2, 
	8, 8, 2, 3, 5, 10, 1, 2, 
	3, 1, 7, 8, 1, 2, 4, 9, 
	1, 5, 4, 0
]

class << self
	attr_accessor :_metagrammar_range_lengths
	private :_metagrammar_range_lengths, :_metagrammar_range_lengths=
end
self._metagrammar_range_lengths = [
	0, 0, 0, 0, 3, 3, 0, 0, 
	3, 3, 3, 3, 0, 0, 3, 3, 
	0, 0, 3, 3, 3, 3, 0, 0, 
	0, 0, 0, 0
]

class << self
	attr_accessor :_metagrammar_index_offsets
	private :_metagrammar_index_offsets, :_metagrammar_index_offsets=
end
self._metagrammar_index_offsets = [
	0, 0, 6, 8, 13, 19, 26, 31, 
	34, 46, 58, 64, 71, 77, 88, 93, 
	99, 103, 105, 116, 128, 133, 139, 144, 
	154, 156, 162, 167
]

class << self
	attr_accessor :_metagrammar_indicies
	private :_metagrammar_indicies, :_metagrammar_indicies=
end
self._metagrammar_indicies = [
	0, 2, 0, 3, 4, 1, 5, 3, 
	6, 5, 6, 7, 3, 5, 8, 8, 
	8, 8, 3, 5, 9, 8, 8, 8, 
	8, 3, 10, 5, 10, 11, 3, 5, 
	12, 3, 12, 5, 12, 14, 13, 13, 
	15, 16, 13, 13, 13, 3, 13, 5, 
	14, 13, 17, 13, 15, 16, 13, 13, 
	13, 3, 5, 18, 18, 18, 18, 3, 
	5, 19, 18, 18, 18, 18, 3, 5, 
	13, 13, 13, 13, 3, 5, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 3, 
	20, 20, 20, 20, 1, 21, 20, 20, 
	20, 20, 1, 22, 22, 23, 1, 24, 
	1, 24, 24, 27, 26, 26, 28, 29, 
	26, 26, 26, 25, 26, 2, 27, 26, 
	30, 26, 28, 29, 26, 26, 26, 25, 
	31, 31, 31, 31, 1, 32, 31, 31, 
	31, 31, 1, 26, 26, 26, 26, 25, 
	26, 26, 26, 26, 26, 26, 26, 26, 
	26, 25, 34, 33, 0, 2, 0, 3, 
	4, 1, 6, 5, 6, 7, 3, 1, 
	0
]

class << self
	attr_accessor :_metagrammar_trans_targs_wi
	private :_metagrammar_trans_targs_wi, :_metagrammar_trans_targs_wi=
end
self._metagrammar_trans_targs_wi = [
	1, 0, 25, 2, 14, 26, 3, 4, 
	5, 6, 6, 7, 8, 9, 10, 12, 
	13, 8, 11, 9, 15, 16, 16, 17, 
	18, 0, 19, 20, 22, 23, 18, 21, 
	19, 24, 27
]

class << self
	attr_accessor :_metagrammar_trans_actions_wi
	private :_metagrammar_trans_actions_wi, :_metagrammar_trans_actions_wi=
end
self._metagrammar_trans_actions_wi = [
	0, 0, 3, 0, 13, 3, 0, 13, 
	17, 15, 0, 0, 0, 1, 7, 1, 
	1, 5, 11, 9, 17, 15, 0, 0, 
	0, 19, 1, 7, 1, 1, 5, 11, 
	9, 0, 21
]

class << self
	attr_accessor :metagrammar_start
end
self.metagrammar_start = 1;
class << self
	attr_accessor :metagrammar_error
end
self.metagrammar_error = 0;

class << self
	attr_accessor :metagrammar_en_error_line
end
self.metagrammar_en_error_line = 24;
class << self
	attr_accessor :metagrammar_en_main
end
self.metagrammar_en_main = 1;

# line 136 "lib/versfabrik/metagrammar_parser.rl"

  def MetagrammarParser.parse(input)
	error_counter = 0
	key, text = nil, ''
    tk_start, p, tk = 0, 0, nil
    pe = input.size
	data = input
    pm = PoemEvaluator.new
    
# line 182 "lib/versfabrik/metagrammar_parser.rb"
begin
	cs = metagrammar_start
end
# line 145 "lib/versfabrik/metagrammar_parser.rl"
    
# line 188 "lib/versfabrik/metagrammar_parser.rb"
begin
	_klen, _trans, _keys, _acts, _nacts = nil
	if p != pe
	if cs != 0
	while true
	_break_resume = false
	begin
	_break_again = false
	_keys = _metagrammar_key_offsets[cs]
	_trans = _metagrammar_index_offsets[cs]
	_klen = _metagrammar_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p] < _metagrammar_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p] > _metagrammar_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _metagrammar_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p] < _metagrammar_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p] > _metagrammar_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _metagrammar_indicies[_trans]
	cs = _metagrammar_trans_targs_wi[_trans]
	break if _metagrammar_trans_actions_wi[_trans] == 0
	_acts = _metagrammar_trans_actions_wi[_trans]
	_nacts = _metagrammar_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _metagrammar_actions[_acts - 1]
when 0:
# line 16 "lib/versfabrik/metagrammar_parser.rl"
		begin

		text << data[p]
			end
# line 16 "lib/versfabrik/metagrammar_parser.rl"
when 1:
# line 19 "lib/versfabrik/metagrammar_parser.rl"
		begin

		# eol
		pm << TextToken.new(text) unless text.empty?
		text = ''
			end
# line 19 "lib/versfabrik/metagrammar_parser.rl"
when 2:
# line 24 "lib/versfabrik/metagrammar_parser.rl"
		begin

		pm << TextToken.new(text) unless text.empty?
		pm.new_option
		text = ''
			end
# line 24 "lib/versfabrik/metagrammar_parser.rl"
when 3:
# line 29 "lib/versfabrik/metagrammar_parser.rl"
		begin

		pm << TextToken.new(text) unless text.empty?
		key = ''
			end
# line 29 "lib/versfabrik/metagrammar_parser.rl"
when 4:
# line 33 "lib/versfabrik/metagrammar_parser.rl"
		begin

		pm << SymbolToken.new(key)
		text = '' 
			end
# line 33 "lib/versfabrik/metagrammar_parser.rl"
when 5:
# line 37 "lib/versfabrik/metagrammar_parser.rl"
		begin

		key << data[p]
			end
# line 37 "lib/versfabrik/metagrammar_parser.rl"
when 6:
# line 40 "lib/versfabrik/metagrammar_parser.rl"
		begin

		key = ''
			end
# line 40 "lib/versfabrik/metagrammar_parser.rl"
when 7:
# line 43 "lib/versfabrik/metagrammar_parser.rl"
		begin

		pm.new_key(key)
			end
# line 43 "lib/versfabrik/metagrammar_parser.rl"
when 8:
# line 46 "lib/versfabrik/metagrammar_parser.rl"
		begin

		key << data[p]
			end
# line 46 "lib/versfabrik/metagrammar_parser.rl"
when 9:
# line 50 "lib/versfabrik/metagrammar_parser.rl"
		begin

		error_counter += 1
		case data[p]
			when 10
			msg = "Koennte es sein dass die Zeile mit einem | endet? ... #{data[p-30...p]}"
			else
			msg = "unknown character at position #{p}: (#{data[p-1]}/#{data[p]}/#{data[p+1]})" +
					" #{data[p].chr} in: #{data[p-15...p]}(#{data[p]})#{data[p+1..p+15]}"
		end
		puts "error (#{error_counter}): #{msg}"
		p = p - 1; 	begin
		cs = 24
		_break_again = true
		break
	end

			end
# line 50 "lib/versfabrik/metagrammar_parser.rl"
when 10:
# line 129 "lib/versfabrik/metagrammar_parser.rl"
		begin
 	begin
		cs = 1
		_break_again = true
		break
	end
 		end
# line 129 "lib/versfabrik/metagrammar_parser.rl"
# line 356 "lib/versfabrik/metagrammar_parser.rb"
		end # action switch
	end
	end while false
	break if _break_resume
	break if cs == 0
	p += 1
	break if p == pe
	end
	end
	end
	end
# line 146 "lib/versfabrik/metagrammar_parser.rl"
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

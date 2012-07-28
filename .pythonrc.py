import atexit 
import os 
import readline 
import rlcompleter 

history = os.path.expanduser('~/.python_history') 
readline.read_history_file(history) 
readline.parse_and_bind('tab: complete') 
readline.set_history_length(200)
atexit.register(readline.write_history_file, history)

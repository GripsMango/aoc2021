;;#608.("day1") = {REDACTED}
;;#608.("feature_verbs") = {}
;;#608.("aliases") = {"Advent 2021", "AoC"}
;;#608.("description") = "This is the Generic Feature Object.  It is not meant to be used as a feature object itself, but is handy for making new feature objects."
;;#608.("object_size") = {0, 0}

@args #608:"day1" this none this
@program #608:day1
increased_count = 0;
previous = this.day1[1];
for reading in (this.day1)
  increased_count = (reading > previous) ? increased_count + 1 | increased_count;
  previous = reading;
endfor
return increased_count;
.

@args #608:"three_window" this none this
@program #608:three_window
raws = this.day1;
windows = {};
window = 0;
k = 1;
while (k < 1999)
  window = (raws[k] + raws[k + 1]) + raws[k + 2];
  windows = listappend(windows, window);
  k = k + 1;
endwhile
increased_count = 0;
previous = windows[1];
for reading in (windows)
  increased_count = (reading > previous) ? increased_count + 1 | increased_count;
  previous = reading;
endfor
return increased_count;
.

@args #608:"integrize" this none this
@program #608:integrize
ints = {};
for string in (this.day1)
  ints = listappend(ints, toint(string));
endfor
this.day1 = ints;
.

"***finished***
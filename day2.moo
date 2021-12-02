@args #608:"day2" this none this
@program #608:day2
course = this.day2;
hpos = 0;
depth = 0;
for maneuver in (course)
  {direction, length} = $string_utils:words(maneuver);
  if (direction == "forward")
    hpos = hpos + toint(length);
  elseif (direction == "up")
    depth = depth - toint(length);
  elseif (direction == "down")
    depth = depth + toint(length);
  endif
endfor
return {hpos, depth, hpos * depth};
.

@args #608:"day2p2" this none this
@program #608:day2p2
course = this.day2;
hpos = 0;
depth = 0;
aim = 0;
for maneuver in (course)
  {direction, length} = $string_utils:words(maneuver);
  if (direction == "forward")
    hpos = hpos + toint(length);
    depth = depth + (aim * toint(length));
  elseif (direction == "up")
    aim = aim - toint(length);
  elseif (direction == "down")
    aim = aim + toint(length);
  endif
endfor
return {hpos, depth, hpos * depth};
.
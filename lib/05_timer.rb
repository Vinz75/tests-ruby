def time_string(time)
    hours = time/3600.to_i
    minutes = (time/60 - hours * 60).to_i
    seconds = (time - (minutes * 60 + hours * 3600))
    "%02d:%02d:%02d" % [hours, minutes, seconds]
end
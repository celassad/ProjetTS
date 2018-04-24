function [bpm] = bpm_threshold(data, th, Fs)
% Cardiac activity : mean R-R distance in minute

[pks, loc] = findpeaks(data);
pks(pks < th) = 0;
loc_th = find(pks);
new_indices = loc(loc_th);

mean_rr = (new_indices(end)-new_indices(1))/(length(loc_th)-1);
bps = mean_rr/Fs; % interval in seconds
bpm = round(60/bps); % in minutes
end


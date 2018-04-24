function [segment, P_loc, Q_loc, R_loc, S_loc, T_loc ] = ecg_threshold( data, th, i_seg)
[pks, loc] = findpeaks(data);
pks(pks < th) = 0;
loc_th = find(pks);
new_loc = loc(loc_th);

inter_pks = round((new_loc(2) - new_loc(1))/2);
if i_seg > 1
    start_pks = new_loc(i_seg-1) + inter_pks;
else
    start_pks = 1 + inter_pks;
end
end_pks = new_loc(i_seg+1) - inter_pks;

segment = data(start_pks:end_pks);
R_loc = new_loc(i_seg)-start_pks+1;
[~, Q_loc] = min(segment(1:R_loc));
[~, P_loc] = max(segment(1:Q_loc));
[~, S_loc] = min(segment(R_loc+1:end));
S_loc = S_loc + R_loc;
[~, T_loc] = max(segment(S_loc+1:end));
T_loc = T_loc + S_loc;
end


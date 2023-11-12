mp.register_event('file-loaded', function()
    local sub_count = 0

    for _, track in pairs(mp.get_property_native('track-list')) do
        if track.type == 'sub' and track.lang == 'eng' then
            sub_count = sub_count + 1
        end
    end

    if sub_count > 1 then
        mp.set_property('sid', 2)
    end
end)
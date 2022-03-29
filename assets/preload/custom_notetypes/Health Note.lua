function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Health Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'HEALTHNOTE_assets'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	function goodNoteHit(id, i, noteType, isSustainNote)
		if noteType == 'Health Note' then
			setProperty('health', 500);
		characterPlayAnim('boyfriend', 'hey', true);

	end
end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Health Note' then
		characterPlayAnim('boyfriend', 'scared', true);
	end
end
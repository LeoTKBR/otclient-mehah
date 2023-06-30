local musicChannel = nil
if g_sounds then
  musicChannel = g_sounds.getChannel(SoundChannels.Music)
end

function init()
	if musicChannel then
		g_sounds.preload('/data/sounds/sabaku sotaiso')
	end
	ProtocolGame.registerExtendedOpcode(200, receiveSpellSound)
end

function receiveSpellSound(protocol, opcode, buffer)
	if musicChannel then
		musicChannel:enqueue(buffer, 3)
	end
end
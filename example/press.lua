press = require"press"

press.kbhold(0x002E, 5) --5 being how long it'll hold for (seconds)
press.kbholdforever(0x002E) --will hold the key forever
press.kbreleaseforeverkey() --will stop every keys being held
press.kbpress(0x002E) --will press only once
# Text To Speech
# Features
Plays text as speech when the play button is clicked.
The play button toggles between "play" and "stop" states to control speech.
Automatically detects the language of the text and selects an appropriate voice.
Prevents multiple speech instances by stopping the previous speech when a new play button is clicked.

# Browser Language Handling
# Language Selection:

The lang attribute of the text element determines the language to be spoken.
The plugin checks for a matching voice based on the lang attribute (e.g., if the text has lang="en", it will use an English voice).
The browser automatically detects available voices via window.speechSynthesis.getVoices().
Fallback Behavior:

If no matching voice is found for the specified language, the browser may use a default voice, which might not perfectly match the intended language.

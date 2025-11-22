# simple-chatgpt

Simple command-line tool to use ChatGPT Desktop from your Mac terminal.

```bash
> simple-chatgpt "What is the capital of Italy?"
The capital of Italy is Rome.
```

Behind the scenes it forwards your input to a macOS Shortcut included with the install. No OpenAI API key required.

## Install

```bash
brew tap simple-toolbox/simple-chatgpt https://github.com/simple-toolbox/simple-chatgpt
brew install simple-toolbox/simple-chatgpt/simple-chatgpt
# Import the Shortcut into the Shortcuts app:
open "$(brew --prefix)/share/simple-chatgpt/simple-chatgpt.shortcut"
```

Requires ChatGPT Desktop to be installed on your Mac.

On first run, Shortcuts will ask to “Allow ‘simple-chatgpt’ to share 1 text item with ‘ChatGPT’?”. Click **Always Allow**.

The included Shortcut uses the standard “Run ChatGPT” action shipped with the ChatGPT Desktop app: no hacks or custom integrations.

## Use

```bash
simple-chatgpt "What's Italy's capital?"    # ask directly
simple-chatgpt -f prompt.txt                # read prompt from a file
simple-chatgpt -o answer.txt "Write a poem" # write the answer to a file
simple-chatgpt -h                           # help
```

`simple-chatgpt` launches the ChatGPT app automatically if it is not running.

## Disclaimer

ChatGPT is a product and trademark of OpenAI. This utility is not affiliated with or endorsed by OpenAI.

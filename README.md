# CUSE in devcontainer

This is a test to see if it is possible to set up a character device in userspace, within a devcontainer running in GitHub Codespaces

The example is taken from libfuse:

- https://libfuse.github.io/doxygen/cuse_8c.html

## Getting started

1. [Create a new codespace](https://docs.github.com/en/codespaces/developing-in-codespaces/creating-a-codespace-for-a-repository#creating-a-codespace-for-a-repository)
2. Open the terminal (<kbd>Ctrl</kbd>/<kbd>Cmd</kbd> + <kbd>J</kbd>)
3. Run `make`
4. Run `./main -d -n test`

A new character device should now appear as `/dev/test`. This just works as a buffer that you can read and write from, as if it was a file.

5. Run `echo "hello world" > /dev/test`
6. Run `cat /dev/test`

This should output `hello world` to stdout


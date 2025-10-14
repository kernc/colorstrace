`colorstrace` - add color to `strace` output
============================================

[![Build status](https://img.shields.io/github/actions/workflow/status/kernc/colorstrace/ci.yml?branch=master&style=for-the-badge)](https://github.com/kernc/colorstrace/actions)
[![Language: shell / Bash / AWK](https://img.shields.io/badge/lang-Shell-peachpuff?style=for-the-badge)](https://github.com/kernc/colorstrace)
[![Source lines of code](https://img.shields.io/endpoint?url=https%3A%2F%2Fghloc.vercel.app%2Fapi%2Fkernc%2Fcolorstrace%2Fbadge?filter=colorstrace%26format=human&style=for-the-badge&label=SLOC&color=skyblue)](https://ghloc.vercel.app/kernc/colorstrace)
[![Script size](https://img.shields.io/github/size/kernc/colorstrace/colorstrace?style=for-the-badge&color=skyblue)](https://github.com/kernc/colorstrace)

A simple shell/AWK script that adds color to
[`strace`](https://strace.io/) output.

Fixes: https://github.com/strace/strace/issues/39

Installation
------------
Download somewhere onto your `$PATH` and make executable:
```sh
curl -vL 'https://bit.ly/colorstrace' | sudo tee /usr/local/bin/colorstrace
sudo chmod +x /usr/local/bin/colorstrace
```

Usage
-----
```sh
# Colorize existing trace
colorstrace < strace.log

# Trace program, colorizing output
colorstrace STRACE_ARGS PROG ARGS
```

Colors
------
`colorstrace` is line-oriented. The provided color coding is:
* ⬜ white – Highlighted syscalls.
  Use `$COLORSTRACE` environment variable to customize the
  list of syscalls you are interested in.
* ⬛ grey – Normal/boring/verbose syscalls.
* 🟥 red – Syscalls that failed / errored.
* 🟦 cyan – Logging messages from `strace`.

Remaining stdout / stderr are left as-is.
Feedback most welcome!

Example
-------
![screenshot](screen.png)

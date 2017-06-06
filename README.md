[![Website's workflow](https://cloud.githubusercontent.com/assets/957501/22827632/a83ca12a-ef77-11e6-9364-092c52e1c5f0.png)](https://github.com/ENE/ENE.github.io/issues/1)

We have a helper to [publishing] the site:

[publishing]: https://github.com/ENE/ENE-hugo/projects/2

```console
$ source hman
Agent pid 27793
Enter passphrase for /home/USER/.ssh/id_rsa:
Identity added: /home/USER/.ssh/id_rsa (/home/USER/.ssh/id_rsa)
Hi USER! You've successfully authenticated, but GitHub does not provide shell access.
```
```console
$ hman -h

  hman                     Points to root
       md                  To check Markdown, and points to root
       html                To check the HTML and enter into it
       commit [message]    Commit

       -h | --help         Shows these instructions

```
```console
$ cd html
DIRECTORY/public
```
```console
$ cd md
DIRECTORY/
```

However edits and commits in the [cocoa-eh] theme will are done manually.

[cocoa-eh]: https://github.com/ENE/ENE-hugo/projects/1

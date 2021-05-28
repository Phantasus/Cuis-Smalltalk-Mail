# Authors

This file documents the authors of foreign code which was used
in this project. And also the people who worked on this project.

# Initial authors of first reference code (26. November 2020)

For the initial creation of this project were certain classes
filed out from `Sqeak5.3-19431` which is using MIT License.

These files were stored under References for reference purposes
and also for later inclusion if needed. They were extracted by
Josef Philip Bernhart (jpb) and stored in References.

> 34459c1eec1645170749ae9610c380b48ebd7503b5294ee58580bebcb89b016f  References/MailAddressParser.st
> 1f01f30f4dbdce0d52c3c2c2a15f9dfdc0d96f5dde5772e84d9e69df2c1b4ca0  References/MailAddressTokenizer.st
> e51ed6d7cb2010cc4cf4c082ea9db80454a75d172eb1e6bab2808ea4e4b68d30  References/MailAddressToken.st
> 19aa7349e58a7b8ea6b6c628b3918973e889d73a3d7b9d1bab76b957b0720fc9  References/MailMessage.st
> 1c43344cf68a756b7fe405db77799761f4c307113516436614595c5140ae180a  References/MailSender.st

The authors of these files were

    - Adam Spitz (ads)
    - Anthony Hannan (ajh)
    - Bert Freudenberg (bf)
    - Brent Vukmer (bkv)
    - David "Dave" T. Lewis (dtl)
    - Daniel Vainsencher (dvf)
    - Karl Ramberg (kfr)
    - Lex Spoon (ls)
    - Mike Rutenberg (mdr)
    - Nicolas Cellier (nice)
    - Ned Konz (nk)
    - Patrick Rein (pre)
    - Brian Brown (rbb)
    - Stephan B. Wessels (sbw)
    - Tony Garnock-Jones (tonyg)
    - Tim Rowledge (tpr)
    - Levente Uzonyi (ul)
    - Yoshiki Ohshima (yo)

# Refactoring and re-write (28. April 2021)

The refactoring and re-write was done by Josef Philip Bernhart (jpb).
All the previous MIME targetting MailMessage code was more or less
thrown away and the reading, parsing code was extracted and put
into `MailStreamer` classes.

The first commit of this work was:

>commit ed86a4b2611df5152f172395c7c0a382857cd66d (HEAD -> master)
>Author: Josef P. Bernhart <git@phantasus.at>
>Date:   Wed Apr 28 18:06:09 2021 +0200
>
>    Add initial packages
>    
>    1. Adds Mail-Kernel with basic definitions of the MailMessage,
>       which is basically a new almost 99% re-implementation of
>       the MailMessage class of Squeak. The good parts used for
>       reading and parsing were kept in the MessageTokenParser class.
>       The serialization relevant functionality was re-written and
>       moved into MailStreamer classes. Like MailLineStreamer or
>       MailMessageStreamer.
>    
>    2. Adds MailMessageHeader class for introspecting headers and
>       dealing with them as first-class objects.
>    
>    3. Adds tests for the basic mail message reading and writing
>       functionality.
>    
>    4. Adds MediaType-Kernel package, which provides media types
>       and the basis for parsing media types, it's useful for
>       MIME, Gemini, HTTP and other protocols which need to
>       read and interpret these specially formatted type tags.

# Adding SMTP and POP3 clients from Squeak 5.2 (28. May 2021)

On the 28. May 2021 Josef Philip Bernhart (jpb) added the
`SMTPClient`, `SMTPClientTest`, `POP3Client` from the 
`Squeak 5.2-18225` image. This means that the license of these
packages is MIT license as Squeak is under MIT License. 

They were moved into the `References` directory for providing
further references to the actual implementation in cuis. The
`sha256sum` of these files at the time of writing are:

> b02cc0af8066f8b9cb9a4e6ab05c10c2592fc747dc86564606611f34a14ae905  References/SMTPClient.st
> 5f227e3d337754eecb044876d1490a3fd39b8cb892b38292cce0f0e8fa721aca  References/SMTPClientTest.st
> 49190170a1eb7eaae17d958eb2c9126212a25ecf42097c8f0052dfd694932ec4  References/POP3Client.st

The authors of these files were extracted after the line endings were converted to linefeed
with the command:

> cat <file> | tr '\r' '\n' > <new_file>.st

and the command for extracting the authors was always:

> grep 'methodsFor:.*stamp:' <new_file>.st | sed "s/^.*stamp: '([^ ]*) [^']+'.*$/\1/g" -E | sort | uniq

The authors for `POP3Client` are:

- Luciano Esteban Notarfrancesco (len)
- Michael Rueger (mir)
- Nicolas Cellier (nice)
- Patrick Rein (pre)
- Brian Brown (rbb)

The authors `SMTPClient.st` are

- Andreas Raab (ar)
- Frank Shearar (Fbs)
- gk
- klub
- Michael Rueger (mir)
- Patrick Rein (pre)

The authors `SMTPClientTest.st` are:

- Frank Shearar (fbs)


# Adding the IMAPClient project from hpi-swa (28. May 2021)

In addition the `IMAPClient-Core` and `IMAPClient-Protocol` packages
were filed out from the image after installing the `IMAPClient` through
issuing:

> Metacello new
>   baseline: 'IMAPClient';
>  repository: 'github://hpi-swa-teaching/IMAPClient:develop/packages';
>  load.

The license of this project is the MIT License, as clearly visible on the
screenshot of the github page located at https://github.com/hpi-swa-teaching/IMAPClient
in `References/screeshot_github_imapclient_license_20210528.png`.

At the time of writing the latest commit in that repository was:

> commit 5437c6e6c9194ec38035562a12a9ae8d4b075764 (HEAD -> develop, origin/develop, origin/HEAD)
> Merge: aa44480 351e493
> Author: Lorenz Woth <Zumarta@users.noreply.github.com>
> Date:   Fri Aug 7 17:29:56 2020 +0200
>
>    Merge pull request #377 from hpi-swa-teaching/hotfix/ci
>    
>    Fix CI according to missing GitHubToken

After issuing the above metacello install command in the `Squeak 5.2-18225`
were installed the following package versions:

For the `IMAPClient-Core`:

> Name: IMAPClient-Core-cypress.1
> Author: 
> Time: 28 May 2021, 4:38:48.048082 pm
> UUID: 1629ceb5-1f2c-4ceb-bcb9-a09cda83d25c
> Ancestors: 

> fabricated from a Cypress format repository

For the `IMAPClient-Protocol`:

> Name: IMAPClient-Protocol-cypress.1
> Author: 
> Time: 28 May 2021, 4:38:48.185993 pm
> UUID: d3208dd3-bab3-4993-91ba-56e50232d1f7
> Ancestors: 
>
> fabricated from a Cypress format repository

There was also a `IMAPClient-UI` installed, but for the
Cuis-Mail project the UI is not interesting as it would clash
with the existing codebase.

These files were filed out and placed into the `References` subdir,
at the time of writing the `sha256sum` of these files were:

> 31d5139a47d77e64ae4b5e5277ef3492e583b53dfdd608600cded8266342872d  References/IMAPClient-Core.st
> 80040e06ad7592eddfaf2e0a3b35bf0eee006759a5200267fa531daf7054924e  References/IMAPClient-Protocol.st

The authors of `IMAPClient-core.st` were extracted this way:

> cat References/IMAPClient-Core.st | tr '\r' '\n' > IMAPClient-Core.st
> grep 'methodsFor:.*stamp:' IMAPClient-Core.st | sed "s/^.*stamp: '([^ ]*) [^']+'.*$/\1/g" -E | sort | uniq

The authors of `IMAPClient-Core.st` are:

- AR
- C.G.
- DH
- fr
- Henrik Gedenryd (hg)
- Jamie Jones (JJ)
- Jerry Stokes (js)
- lvm
- LW
- ms
- Martin Wirblat (mw)
- NH
- ok
- pm
- tg

The authors of `IMAPClient-Protocol.st` are:

- Henrik Gedenryd (hg)
- Jamie Jones (JJ)
- LW
- Marcel Taeumel (mt)
- NH
- ok
- pm
- tg

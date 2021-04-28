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

>commit e41fb799e9cb699e35079ade052ff7cf23b64cf8 (HEAD -> master)
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


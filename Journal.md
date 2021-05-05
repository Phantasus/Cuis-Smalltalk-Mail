# Project journal

This file is intended to record the history of this project. So that
when it get's abandoned people can take it up again from where it was
left off.

The rule of the structure is that newest is at top, oldest
entry is at the bottom. And people mention the author of the entry
by his shortcut. Also people add their shortcuts to the list of
authors at the end of the file.


# 5. May 2021 (jpb)

The current state of the project is that a rough [RFC 5322](https://tools.ietf.org/html/rfc5322)
mail message can be read from a stream and serialized to a stream.

The MIME extensions which were present in the original Squeak `MailMessage`
class and which I basically removed, because they made porting unnecessary
difficult and made the class too big. Serialization should be done by
a different class, the `MailMessage` class should only contain
information necessary for holding a `MailMessage` as a model and
almost nothing more.

I started writing Morphic code for editing a `MailMessage`, so that
a Mail view could be done in Cuis.


# Authors

- Josef Philip Bernhart (jpb)

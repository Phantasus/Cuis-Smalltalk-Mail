# Project journal

This file is intended to record the history of this project. So that
when it get's abandoned people can take it up again from where it was
left off.

The rule of the structure is that newest is at top, oldest
entry is at the bottom. And people mention the author of the entry
by his shortcut. Also people add their shortcuts to the list of
authors at the end of the file.

# 26. May 2021 (jpb)

After some productive days over the weekend and during the first
days of my vacation I added the facility for generating message-ids
according to JWZ and others. Which is pluggable, so that it can
be switched out, if someone desires for whatever reason to put
an UUID in there. I did not use the UUID package, as I would like
to keep the dependencies down to only that stuff which I really need.

I don't yet know of how to handle setting the value of a mail header
value, the squeak implementation of `MailMessage`, which is a different
beast than my re-implementation (minus some methods, which I copied from
the Squeak `MailMessage` class. In the end I think the code should not 
care about if an object is passed as the value of a header or a string
is passed in, which would reduce checking of the type of the message.

I'm thinking about where the message-id
or the mandatory `Date` header should be set (on creation-time or at edit time)
I'm currently more inclined that these headers should not be set when someone
types in `MailMessage new` as there should be the notion of an empty mail,
which should be tested by `message isEmpty`. So maybe at edit time?

To get more an apropriate opinion about these issues and I implemented a `MailBrowser`
class, which is a model for browsing, editing and sending mail. I think for
mailinglists, mass editing or different representations of mail editing
this could be a useful addition. And also it gives me a testbed to think
about where the message-id and date initialization really belongs.
It would be neat, if the `MailBrowser` model class could be used universally
as a model for browsing, editing and sending mail for all kinds of different
mail browsers or for a simulated "user" agent object which operates it and
makes automatic replies.

In addition to a simple `MailBrowser` model, just to form the functionality
of it I added a `MailBrowserWindow`, which is roughly styled in the way of
the laurel mail client on the Xerox Alto. To be able to read mails and send
mails I added a unix specifc `MaildirRepository` which can read a [maildir styled directory](https://cr.yp.to/proto/maildir.html) and a simple sending mechanism, which uses a "sendmail command" on unix
to send mails out. I moved the later into its own package, as it depends on
`OSProcess` to invoke the sendmail command.

The `MaildirRepository` does not use an indexing mechanism to read the 
headers needed for flagging, finding the subject, date or author of the
stored mails, so the "mail list" in the `MailBrowserwindow` is only
the creation date, the identifier and the encoded file flags in the maildir
repository. Which is good enough to browse it, but not good enough when
you want to have a "mail client".

This means basically, that I now have some roughly working infrastructure in
place to send and receive mails on unix systems. Which is a nice first
success.

Here is a current snippet of how to put together a `MailBrowserWindow`
using the above described code:

```smalltalk
"Creates a mail repository for browsing local mail in a directory"
"It needs to have the typical cur/, tmp/ and new/ subdirs"
"as it's expected by the maildir format"
mailRepository := MaildirRepository new.
mailRepository directory: '/home/user/Mail/inbox'.

"Setting up the sendmail sender, uses in this case msmtp"
sender := MailSendmailSender new.
sender sendmailCommand: '/usr/bin/msmtp --read-envelope-from -t --file=/home/user/Mail/msmtp/msmtprc'.

"Creates the mail browser model, which implements the actual mail actions"
model := MailBrowser new.
model mailRepository: mailRepository.
model mailSender: sender.

"Opens the model in a mail browser window"
browser := MailBrowserWindow open: model label: 'Laurel Demo'.
```

This then looks roughly like:

![Screenshot showing a three paned mail client](Assets/Journal/screenshot_laurel_20210526.png "Laurel like browser")


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

Next steps are to set correct default values for essential Mail headers,
like for example the `Message-ID`, I'm reading regarding this topic
this [recommendation by JWZ](https://tools.ietf.org/html/draft-ietf-usefor-message-id-01)

# Authors

- Josef Philip Bernhart (jpb)

# Translations

Kimai is continually evolving so translations get outdated pretty fast. Therefore we're always happy if people invest their time into improving the translations. Translations to new languages are welcome as well, of course.

## Where to start?

The language folder in Kimai is where all translation files are stored. All files in that folder, which end in .php are displayed to the user as possible translations. For now we use a short code to identify its langauge.

## Format of the translation files

The files are simple PHP scripts which return an array that in turn can contain arrays and that maps translation keys to their reprective translation in the language. So if you have

` 'ext_invoice' => array(
“invoiceTitle” => “Create invoice”,
“foo” => “Hello World”
),`

only “Create invoice” is what is shown to the user and has to be translated. The strings “ext_invoice” and “invoiceTitle” are the keys which Kimai uses to find the translated string (do not touch them!).

## Adding new translations

Doing so is pretty easy to describe, but it is some work for you. Just take the en.php file as a basis. This file contains all strings which can be translated in Kimai. Save that file under the short name of the language with the file extension .php (e.g. es.php for spanish) and start translating the values (see above).

## Updating a translation

If you want to improve an existing translation there are mainly two things you will do. Either you will change existing translated string (which surely doesn't need any explanation) or you will add missing translations. To do so check where the keys of the PHP arrays differ from the reference file en.php. If you find any keys missing in en.php you can remove them in your language file.

## Publishing a translation

You can publish your finished translation file at:
http://forum.kimai.org/index.php?board=11.0

Or even better, create a pull request and we include it in the official release: https://github.com/kimai/kimai/pulls

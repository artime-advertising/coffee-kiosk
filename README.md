Nestle Kiosk
============

Kiosk software βασισμένο στο Middleman.

[ ![Codeship Status for artime-advertising/coffee-kiosk](https://codeship.io/projects/bca3e560-fe03-0131-3861-7ac8d6a30f22/status)](https://codeship.io/projects/29502)

Εγκατάσταση:
------------

### Απαιτήσεις

* Ruby 1.9.2 ή μεταγενέστερη
* Bundler http://bundler.io
* Bower http://bower.io/#installing-bower

``` bash
$ git clone git@bitbucket.org:artimeltd/nestle-kiosk.git
$ cd nestle-kiosk
$ bundle
$ bower install
```

Εκτέλεση preview server:
------------------------

``` bash
$ bundle exec middleman s
```

Προετοιμασία Flipbook:
----------------------

* Μετονομασία του `index.html` σε `show.html`.
* Προσθήκη στο `show.html`: `<a href="../homepage.html" style="position: fixed; top: 0; right: 0; border-bottom-left-radius: 5px; display: block; padding: 10px 20px 10px 10px; background: #1C242E; color: white; text-decoration: none; font-family: sans-serif">← Πίσω στην αρχική οθόνη</a>`
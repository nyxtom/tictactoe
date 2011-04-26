Tic Tac Toe
=================

A simple demonstration of the classic game with testing and live feedback in mind.

Components
------------------
* A game playable locally and multiplayer over the web
* Logging in using your facebook account
* Quick, dead simple ui but very pretty :)
* CSS3/HTML5 Used throughout the game
* Unit tests for awesomeness

How to run this
-------------------
* Create a virtualenv
* Install requirements via `pip install -r requirements.pip`
* Open up `scripts/` and run `launch.sh`
* Launch a browser and open up `localhost:8000`

How to test this
------------------
Tests are written with the following:
* Acceptance tests via lettuce
* Javascript unit tests via QUnit
* Python Django functional and unit tests

You can test any of the django tests by running:
`./manage.py test unit`
or 
`./manage.py test functional`
or just
`./manage.py test`

Additionally you can run the Javascript tests in sync with the acceptance
tests (as the acceptance tests are built to ensure that QUnit runs
everything via the specrunner tests)
`./manage.py harvest`

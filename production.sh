#!/usr/bin/env bash
flask db upgrade
gunicorn -w 4 --bind 0.0.0.0:$PORT "application:init_app()"
#!/bin/bash

if [[ -z $APP_ENV ]]; then
    export APP_ENV="development"
fi

if [ $APP_ENV == "development" ]; then
    uvicorn main:app --reload --host 0.0.0.0 --port 8000
else
    uvicorn main:app --host 0.0.0.0 --port 8000
fi

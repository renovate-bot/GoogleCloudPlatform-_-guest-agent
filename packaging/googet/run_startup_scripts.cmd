@echo off
REM Copyright 2015 Google LLC
REM
REM Licensed under the Apache License, Version 2.0 (the "License");
REM you may not use this file except in compliance with the License.
REM You may obtain a copy of the License at
REM
REM     https://www.apache.org/licenses/LICENSE-2.0
REM
REM Unless required by applicable law or agreed to in writing, software
REM distributed under the License is distributed on an "AS IS" BASIS,
REM WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
REM See the License for the specific language governing permissions and
REM limitations under the License.

REM Run startup scripts that should happen late at boot.

REM A scheduled task may only run for up to three days before termination.
REM We execute the startup script asynchronously so it may run without
REM this three day maximum runtime limitation.

IF EXIST "C:\Program Files\Google\Compute Engine\metadata_scripts\GCECompatMetadataScripts.exe" (
    start "" "C:\Program Files\Google\Compute Engine\metadata_scripts\GCECompatMetadataScripts.exe" "startup"
) ELSE (
    start "" "C:\Program Files\Google\Compute Engine\metadata_scripts\GCEMetadataScripts.exe" "startup"
)
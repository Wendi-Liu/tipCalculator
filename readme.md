# Pre-work - Tip Calculator

Submitted by: Wendi

Time spent: 12 hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [X] UI animations
* [X] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] customize tip percentage and remember customized tip percentage between restart

- [X] store user settings automatically without the need of explicit save button

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://imgur.com/SnsJGzT.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Store user settings in the correct viewControl lifeCycle, and understand the overlapping between lifeCycles of multiple views.

Get rid of hard-coded numbers and use globally-defined Enums and static variables across different viewController, so that multiple fields can be iteratored through instead of copy-pasted.

Take care of potential illegal input before calculating tips or storing user settings.

Always init app with default tip percentage.

Only store user settings when exiting setting view, in order to avoid redundant writes to user default database.

## License

    Copyright [2017] [Wendi]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

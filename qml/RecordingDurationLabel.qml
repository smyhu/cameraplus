// -*- qml -*-

/*!
 * This file is part of CameraPlus.
 *
 * Copyright (C) 2012-2014 Mohammed Sameer <msameer@foolab.org>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 */

import QtQuick 2.0

Rectangle {
    property int duration

    anchors {
        verticalCenter: parent.verticalCenter
        right: parent.right
        rightMargin: cameraStyle.padding
    }

    color: "transparent"
    width: row.width
    height: row.height

    Row {
        id: row
        spacing: cameraStyle.spacingSmall
        height: label.height

        Image {
            source: cameraTheme.recordingDurationIcon
            width: label.height * 2 / 3
            height: width
            anchors.verticalCenter: parent.verticalCenter
            sourceSize.width: width
            sourceSize.height: height
        }

        CameraLabel {
            id: label
            function formatDuration(dur) {
                var secs = parseInt(recordingDuration.duration)
                var minutes = Math.floor(secs / 60)
                var seconds = secs - (minutes * 60)

                var date = new Date()
                date.setSeconds(seconds)
                date.setMinutes(minutes)
                return Qt.formatTime(date, "mm:ss")
            }

            text: formatDuration(parent.duration)
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}

// -*- c++ -*-

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

#ifndef QT_CAM_UTILS_H
#define QT_CAM_UTILS_H

#include <QString>
#include <QList>

class QSize;

class QtCamUtils {
public:
  static QString commonNameForResolution(const QSize& size);
  static QString aspectRatioForResolution(const QSize& size);
  static float megapixelsForResolution(const QSize& size);
  static QList<QSize> findMatchingResolutions(const QSize& size, const QList<QSize>& sizes,
					      QSize& max);
};

#endif /* QT_CAM_UTILS_H */

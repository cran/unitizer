# Copyright (C) Brodie Gaslam
#
# This file is part of "unitizer - Interactive R Unit Tests"
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# Go to <https://www.r-project.org/Licenses/GPL-2> for a copy of the license.

setMethod(
  "diffObj", c("conditionList", "conditionList"),
  function(target, current, ...) {
    dots <- match.call(expand.dots=FALSE)[["..."]]
    if("mode" %in% names(dots))
      callNextMethod()
    else
      callNextMethod(target=target, current=current, ..., mode="unified")
  }
)

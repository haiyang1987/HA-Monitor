#!/bin/sh
#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# determine location of script
this="${BASH_SOURCE-$0}"
here="`dirname ${this}`"
here="`cd ${here}; pwd`"
log4j="file://${here}/log4j.properties"

java -cp ${here}/hmonitor.jar:${here}/core/\*:${here}/lib/\*:${here}/extras/\* -Xmx256m\
  -Djava.library.path=${here} \
  -Dlog4j.configuration=${log4j} \
  org.apache.ambari.servicemonitor.clients.LsDir $@

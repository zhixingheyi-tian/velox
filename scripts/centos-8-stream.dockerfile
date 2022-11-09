# Copyright (c) Facebook, Inc. and its affiliates.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Build the test and build container for presto_cpp
#
FROM quay.io/centos/centos:stream8
ARG cpu_target
COPY setup-centos8.sh /
COPY setup-helper-functions.sh /
RUN mkdir build && ( cd build && CPU_TARGET="$cpu_target" bash /setup-centos8.sh ) && rm -rf build

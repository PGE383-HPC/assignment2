#/usr/bin/env python
#
# Copyright 2020-2021 John T. Foster
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import unittest
import os 

class TestSolution(unittest.TestCase):
    
    def test_for_files1_lorem2(self):

        assert os.path.isfile('./files1/lorem2.txt')

    def test_for_files1_lorem3(self):

        assert os.path.isfile('./files1/lorem3.txt')

    def test_for_files2_lorem2(self):

        assert os.path.isfile('./files2/lorem2.txt')

    def test_for_files2_lorem3(self):

        assert os.path.isfile('./files2/lorem3.txt')

    def test_lorem3_content_1(self):

        with open('./files1/lorem3.txt') as f:

            lines = f.readlines()

        assert lines[9][6:13] == 'numquam'

    def test_lorem3_content_2(self):

        with open('./files2/lorem3.txt') as f:

            lines = f.readlines()

        assert lines[7][17:22] == 'velit'


if __name__ == '__main__':
    unittest.main()

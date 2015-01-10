#!/usr/bin/env python
# -*- coding: utf-8 -*-

import pyotherside

def count_up(number):
    print("python", number)
    pyotherside.send("count_up", str(int(number)+1))


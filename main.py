#!/usr/bin/env python3
# -*- coding: utf-8 -*-
u"""
This file contains the main entries of the sashimi
"""
from loguru import logger

from trackplot.cli import main


if __name__ == "__main__":
    try:
        main()
    except Exception as err:
        logger.exception(err)

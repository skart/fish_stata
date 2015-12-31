#!/bin/bash
echo "Starting Thin Server in the Background"
cd ~/Sites/fish_stats
bundle exec thin start &

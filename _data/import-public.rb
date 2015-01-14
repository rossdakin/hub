#! /usr/bin/env ruby
#
# 18F Hub - Docs & connections between team members, projects, and skill sets
#
# Written in 2014 by Mike Bland (michael.bland@gsa.gov)
# on behalf of the 18F team, part of the US General Services Administration:
# https://18f.gsa.gov/
#
# To the extent possible under law, the author(s) have dedicated all copyright
# and related and neighboring rights to this software to the public domain
# worldwide. This software is distributed without any warranty.
#
# You should have received a copy of the CC0 Public Domain Dedication along
# with this software. If not, see
# <https://creativecommons.org/publicdomain/zero/1.0/>.
#
# ---
#
# Imports data from _data/private into _data/public.
#
# Expects to be run directly within the _data directory with the _data/private
# submodule present. All 'private:' data is stripped from the _data/private
# files before it is dumped into _data/public.
#
# @author Mike Bland (michael.bland@gsa.gov)
# Date:   2014-12-22

YAML_FILES = [
  'departments.yml',
  'projects.yml',
  'team.yml',
  'working_groups.yml',
].map {|i| "private/#{i}"}.join ' '

exit $?.exitstatus unless system("filter-yaml-files #{YAML_FILES}")

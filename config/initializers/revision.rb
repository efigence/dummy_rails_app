# encoding: UTF-8
branch_filename = File.expand_path('BRANCH', Rails.root)
BRANCH = File.exist?(branch_filename) ? File.read(branch_filename).strip : ''
revision_filename = File.expand_path('REVISION', Rails.root)
REVISION = (File.exist?(revision_filename) ? File.read(revision_filename).strip : '') + '-' + BRANCH

front_branch_filename = File.expand_path('BRANCH', Rails.root.join('public'))
FRONT_BRANCH = File.exist?(front_branch_filename) ? File.read(front_branch_filename).strip : ''
front_revision_filename = File.expand_path('REVISION', Rails.root.join('public'))
FRONT_REVISION = (File.exist?(front_revision_filename) ? File.read(front_revision_filename).strip : '') + '-' + FRONT_BRANCH

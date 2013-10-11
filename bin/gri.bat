@echo off
set REBASE=%1
if "%REBASE%" == "" set REBASE=2
git rebase -i HEAD~%REBASE%

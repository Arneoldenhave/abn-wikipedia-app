#!bin/bash
xcrun simctl terminate 81CAFE41-F0B8-4E1D-A4AE-640CB7EF0112 org.wikimedia.wikipedia
xcrun simctl openurl 81CAFE41-F0B8-4E1D-A4AE-640CB7EF0112  wikipedia://places?long=4.9013760543508&lat=52.372866468351724
xcrun simctl openurl 81CAFE41-F0B8-4E1D-A4AE-640CB7EF0112  "wikipedia://places?lat=52.37244725534921&long=4.899316117938501"
# attaching the debugger casues a crash in some UITableView unforunately so well habe to run thisc script blind for now
#lldb -n "Wikipedia"


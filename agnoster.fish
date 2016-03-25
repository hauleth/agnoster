function agnoster -d 'Enable theme'
  switch $argv[1]
  case powerline
    set -Ug AGNOSTER_SEGMENT_SEPARATOR \ue0b0 ' '\ue0b1' '
    set -Ug AGNOSTER_SEGMENT_RSEPARATOR \ue0b2 \ue0b3
    set -Ug AGNOSTER_ICON_ERROR \u2717
    set -Ug AGNOSTER_ICON_ROOT \u26a1
    set -Ug AGNOSTER_ICON_BGJOBS \u2699
    set -Ug AGNOSTER_ICON_GIT_BRANCH \ue0a0
    set -Ug AGNOSTER_ICON_GIT_REF \u27a6
    set -Ug AGNOSTER_ICON_GIT_STAGED '…'
    set -Ug AGNOSTER_ICON_GIT_STASHED '~'
  case '*'
    set -Ug AGNOSTER_SEGMENT_SEPARATOR '' \u2502
    set -Ug AGNOSTER_ICON_ERROR \u2717
    set -Ug AGNOSTER_ICON_ROOT \u26a1
    set -Ug AGNOSTER_ICON_BGJOBS \u2699
    set -Ug AGNOSTER_ICON_GIT_BRANCH \u2387
    set -Ug AGNOSTER_ICON_GIT_REF \u27a6
    set -Ug AGNOSTER_ICON_GIT_STAGED '…'
    set -Ug AGNOSTER_ICON_GIT_STASHED '~'
  end
end

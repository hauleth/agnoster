function agnoster_powerline -d 'Enable Powerline elements in prompt'
  set -g AGNOSTER_SEGMENT_SEPARATOR \ue0b0 ' '\ue0b1' '
  set -g AGNOSTER_SEGMENT_RSEPARATOR \ue0b2 \ue0b3
  set -g AGNOSTER_ICON_GIT_BRANCH \ue0a0
end

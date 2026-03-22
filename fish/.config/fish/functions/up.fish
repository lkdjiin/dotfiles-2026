function up \
  --description 'Update, upgrade, and clean'

  echo "sudo apt update" \
  && sudo apt update \
  && echo "sudo apt full-upgrade" \
  && sudo apt full-upgrade \
  && echo "sudo apt autoremove -y" \
  && sudo apt autoremove -y \
  && echo "sudo apt autoclean -y" \
  && sudo apt autoclean -y \
  && sudo snap refresh
end

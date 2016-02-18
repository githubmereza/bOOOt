do

local function run(msg, matches)
  if matches[1] == 'me' then
    if is_sudo(msg) then
    send_document(get_receiver(msg), "./data/me/sudo.webp", ok_cb, false)
      return "شما سودو هستید"
    elseif is_admin(msg) then
    send_document(get_receiver(msg), "./data/me/admin.webp", ok_cb, false)
      return "شما ادمین هستید"
    elseif is_owner(msg) then
    send_document(get_receiver(msg), "./data/me/owner.webp", ok_cb, false)
      return "شما صاحب گروه هستید"
    elseif is_momod(msg) then
    send_document(get_receiver(msg), "./data/me/moderetion.webp", ok_cb, false)
      return "شما مدیر گروه هستید"
    else
      return "شما عضو عادی گروه هستید"
  end
end
end

return {
  patterns = {
    "^[!/]([Mm]e)$",
    "^([Mm]e)$",
    },
  run = run
}
end

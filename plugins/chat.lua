local function run(msg)
if msg.text == "وضعیت" then
	return "ربات روشن میباشد"
end
if msg.text == "سلام" then
	return "سلام"
end
if msg.text == "MRROBOT" then
	return "جونم"
end
if msg.text == "خوبی" then
	return "ممنون تو خوبی؟"
end
if msg.text == "؟" then
	return "بله"
end
if msg.text == "رضا" then
	return "با بابای من چیکار داری"
end
if msg.text == "@IM_REZA_MI" then
	return "با بابای من چیکار داری"
end
if msg.text == "بای" then
	return "بای"
end
if msg.text == "مرسی" then
	return "فدات"
end
end

return {
	description = "Chat With Robot Server", 
	usage = "chat with robot",
	patterns = {
	"^وضعیت",
	"^سلام",
	"^MRROBOT$",
	"^خوبی",
	"^؟",
	"^رضا",
	"^@IM_REZA_MI$",
	"^بای",
	"^مرسی",
		
		}, 
	run = run,
    --privileged = true,
	pre_process = pre_process
}

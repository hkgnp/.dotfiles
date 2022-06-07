import subprocess

output = subprocess.run(["yabai","-m","query","--displays"],capture_output=True,text=True)
output_text = output.stdout.strip()
output_obj = eval(output_text)
width = (output_obj[0]["frame"]["w"])

if width == 1920.0:
    subprocess.run(["yabai","-m","config","top_padding","41"])
    print("Padding set to 41")
else:
    subprocess.run(["yabai","-m","config","top_padding","7"])
    print("Padding set to 7")

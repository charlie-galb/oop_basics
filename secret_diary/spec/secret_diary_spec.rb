require "secret_diary"

describe SecretDiary do

  it "adds entry to the diary" do
    diary = SecretDiary.new
    diary.add_entry("I'm feeling fine")
    expect(diary.pages).to eq(["I'm feeling fine"])
  end
  it "responds to the method 'add_entry'" do
    diary = SecretDiary.new
    expect(diary.add_entry("Hello")).to eq("Entry added")
  end
  it "prints a diary entry on demand" do
    diary = SecretDiary.new
    diary.add_entry("Hello")
    expect { diary.read_diary }.to output("Hello\n").to_stdout
  end
  it "prints multiple diary entries on demand" do
    diary = SecretDiary.new
    diary.add_entry("Hello")
    diary.add_entry("How are you?")
    expect { diary.read_diary }.to output("Hello\nHow are you?\n").to_stdout
  end
  it "Trying to add an entry throws an error when the diary is locked" do
    diary = SecretDiary.new
    expect {diary.add_entry "Hello"}.to raise_error("LOCKED")
  end
  it "responds to the method 'unlock'" do
    expect(SecretDiary.new).to respond_to(:lock)
  end

end

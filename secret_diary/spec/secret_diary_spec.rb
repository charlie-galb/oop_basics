require "secret_diary"

describe SecretDiary do
  it "responds to the method 'lock'" do
    expect(SecretDiary.new).to respond_to(:lock)
  end
  it "responds to the method 'unlock'" do
    expect(SecretDiary.new).to respond_to(:lock)
  end
  it "responds to the method 'add_entry'" do
    expect(SecretDiary.new).to respond_to(:lock)
  end
  it "responds to the method 'read_diary'" do
    expect(SecretDiary.new).to respond_to(:lock)
  end
  
end

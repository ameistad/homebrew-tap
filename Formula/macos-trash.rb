# frozen_string_literal: true

# Fnm formula :D
class MacosTrash < Formula
  attr_accessor :shell_configuration_failure

  VERSION = '1.1.0'
  desc 'Move files and folders to the trash'
  homepage 'https://github.com/sindresorhus/macos-trash'
  url "https://github.com/sindresorhus/macos-trash/releases/download/#{VERSION}/trash.zip"

  version VERSION
  sha256 '94adb0cecfe1a99845fcbb2b30865a132dfaf696ce1f2bd840ae0f3def73ded0'

  bottle :unneeded
  # conflicts_with "trash", :because => "Other trash also ships a trash binary"

  test do
    system "#{bin}/trash", '--version'
  end

  def install
    bin.install 'trash'
  end
end

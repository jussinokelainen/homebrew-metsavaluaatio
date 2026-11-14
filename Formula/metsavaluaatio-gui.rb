class MetsavaluaatioGui < Formula
  desc "Metsäomaisuuden arviointi GPUI-työpöytäsovelluksella"
  homepage "https://github.com/jussinokelainen/metsavaluaatio-gui"
  url "https://github.com/jussinokelainen/metsavaluaatio-gui/archive/refs/tags/0.1.0.tar.gz"
  sha256 "c11a72cce38abbc9c8a2813a0f0bf8a4ae0d99962f474ed54fa7305786a3a137"
  license "AGPL-3.0-only"

  depends_on "rust" => :build
  depends_on "cmake" => :build
  depends_on "sqlite"

  def install
    if OS.mac?
      unless quietly { system "xcrun", "-sdk", "macosx", "metal", "--version" }
        odie <<~EOS
          The Apple Metal Toolchain is required to build Mytool GUI.

          Install Xcode from the Mac App Store, then run:

            sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
            xcodebuild -runFirstLaunch
            xcodebuild -downloadComponent MetalToolchain

          After installing the Metal Toolchain, try again:

            brew reinstall #{name}
        EOS
      end
    end

    system "cargo", "install", "--bin", "metsaval-gui", *std_cargo_args
  end
end

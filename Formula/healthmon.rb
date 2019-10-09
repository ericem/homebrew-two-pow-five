class Healthmon < Formula
  desc "Process Health Monitor"
  homepage "https://github.com/ericem/two-pow-five/tree/master/healthmon"
  url "https://github.com/ericem/two-pow-five/raw/master/healthmon/release/healthmon-0.2.0.tar.gz"
  sha256 "699912fb7758c3b9290550a96c927cbd3eff3e4d439570500162b3d2cf779c30"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/healthmon/release"
    cellar :any
    sha256 "2b4613533066d08c13ae7efa25ca8cfdb7cb4fd44a0bb23da8dcfb662ca6a96b" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "openssl"
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end

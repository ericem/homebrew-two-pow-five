class Healthstatus < Formula
  desc "Process Health Status"
  homepage "https://github.com/ericem/two-pow-five/tree/master/healthstatus"
  url "https://github.com/ericem/two-pow-five/raw/master/healthstatus/release/healthstatus-0.1.0.tar.gz"
  sha256 "3048b15fb81a01110d6356e628447f2ed2a97c16b64e9af7f0ff8391737fb91e"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/healthstatus/release"
    cellar :any
    sha256 "71ec5042bdf1b84e7993ef793c5f827b2bddb2e9df7daf8827009efd1e117beb" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "openssl"
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end

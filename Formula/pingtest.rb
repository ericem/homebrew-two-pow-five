class Pingtest < Formula
  desc "Certificate Dumper"
  homepage "https://github.com/ericem/two-pow-five/tree/master/pingtest"
  url "https://github.com/ericem/two-pow-five/raw/master/pingtest/release/pingtest-0.1.0.tar.gz"
  sha256 "b2ea3fe368c97a6cf7cdfa9e634350aab3dff5752592c44c4981326e94c5a6aa"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/pingtest/release"
    cellar :any
    sha256 "5658a435ab5b8a9136f310a7c90603762a7c02a2f21892a83c5046032b0f4c64" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end

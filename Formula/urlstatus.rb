class Urlstatus < Formula
  desc "URL Status Checker"
  homepage "https://github.com/ericem/two-pow-five/tree/master/urlstatus"
  url "https://github.com/ericem/two-pow-five/raw/master/urlstatus/release/urlstatus-0.1.0.tar.gz"
  sha256 "f6b67211ad237b09eb1f02493d06a60ceda47218c3a6241715cd33102e24d0a7"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/urlstatus/release/"
    cellar :any
    sha256 "c7c54384d7212bf551878cbe86dd04e94139ec67e7bbb39a51f34c700288276e" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end

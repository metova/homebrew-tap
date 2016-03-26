class Swiftlint < Formula
  desc "Experimental tool to enforce Swift style and conventions"
  homepage "https://github.com/metova/SwiftLint"
  url "https://github.com/metova/SwiftLint.git", :tag => "0.9.2m1", :revision => "11e59cb7174c3f540b55d98e8051ca477a86f654"
  head "https://github.com/metova/SwiftLint.git"

  depends_on :xcode => ["7.1", :build]

  def install
    system "make", "prefix_install", "PREFIX=#{prefix}", "TEMPORARY_FOLDER=#{buildpath}/SwiftLint.dst"
  end

  test do
    (testpath/"Test.swift").write "import Foundation\n"
    system "#{bin}/swiftlint"
  end
end

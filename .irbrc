# IRB.conf[:AUTO_ENDENT] = true

module IRB::ExtendCommandBundle
  def time(&block)
    t1 = Time.now
    result = block.call if block
    diff = Time.now - t1
    puts("Time: " + diff.to_f.to_s)
    result
  end
end
class ___ < StandardError
end

score = 52
begin
    if score > 60
        puts "passing grade"
    else
        ____ TestScoreError, "failing grade"
    end
rescue _____ => error
    puts "Received #{error._____}. Taking make-up exam..."
    score = 63
    _____
end

=begin
Expected output

Received failing grade. Taking make-up exam...
passing grade
=end
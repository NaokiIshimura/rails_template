class LoggerController < ApplicationController
  def index
  end

  def log_puts
    puts 'LOGGER >>> puts'
    redirect_to logger_path
  end

  def debug
    logger.debug 'LOGGER >>> debug'
    redirect_to logger_path
  end

  def info
    logger.info 'LOGGER >>> info'
    redirect_to logger_path
  end

  def warn
    logger.warn 'LOGGER >>> warn'
    redirect_to logger_path
  end

  def error
    logger.error 'LOGGER >>> error'
    redirect_to logger_path
  end

  def fatal
    logger.fatal 'LOGGER >>> fatal'
    redirect_to logger_path
  end
end

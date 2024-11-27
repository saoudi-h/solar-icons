import pino from 'pino'
import PinoPretty from 'pino-pretty'

export const logger = pino(
    PinoPretty({
        colorize: true,
        colorizeObjects: true,
    })
)

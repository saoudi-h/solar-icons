
'use client'
import { useCopyButton } from 'fumadocs-ui/utils/use-copy-button';
import React, { MouseEventHandler } from 'react';
import { Button, ButtonProps, buttonVariants } from './button';
import { cn } from '@/lib/utils';
import { Copy } from '@solar-icons/react/ssr';
import { CheckCircle } from '@solar-icons/react/ssr';


interface CopyButtonProps extends ButtonProps {

    onCopy: () => void | Promise<void>,
}

export const CopyButton = React.forwardRef<HTMLButtonElement, CopyButtonProps>(({ onCopy, children, ...props }: CopyButtonProps, ref) => {

    const [checked, onClick] = useCopyButton(onCopy)


  return (
      <Button
        ref={ref}
        {...props}
        onClick={onClick}
      >
        {children}
        {checked ? <CheckCircle /> : <Copy />}
      </Button>
    );
  }
)

CopyButton.displayName = 'CopyButton';

